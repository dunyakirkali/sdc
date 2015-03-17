/*
  File         : LANBOX_DMXOUT.cpp
  Creation date: 25/06/2004
  Creator      : Kurt Sterckx
  Description  :

   Routines for using the LanBox LCE Box.

  Revision:
*/

#include <windows.h>
#include <stdio.h>
#include <string.h>
#include <winsock.h>

//#import <wsock32.lib>

#define HighByte(a)  ((unsigned char) ((a) >> 8))
#define LowByte(a)   ((unsigned char) ((a) & 0xFF))

static SOCKET         destSocket      = INVALID_SOCKET;
static SOCKADDR_IN    destSockAddr;
static unsigned char  winsock_started = 0;
static unsigned short packet_sequence;

static int lSendDMX(unsigned short channel_offset, unsigned char* data, unsigned short datalen);


/********************************************************************
 * int LANBOX_DMXOUT_Init(unsigned long ipaddress, unsigned short port)
 ********************************************************************
 * Initialize the UDP connection that is used by the LanBox
 *  Parameters   : ipaddress : IP address of LanBox (192.168.1.77)
 *                 port      : UDP port (4777)
 *  Return value : 0 : Succes
 *                 1 : Failed because winsock canùt be loaded
 *                 1 : Failed because port can't be opened
 *
 *  Remarks:
 *
 *
 *  Example of use:
 *   
 *   if (LANBOX_DMXOUT_Init(inet_addr("192.168.1.77"), 4777) == 0)
 *     printf("LANBOX Initialized\n");
 *   else
 *     printf("Unable to initialize LANBOX\n");
 *
 *******************************************************************/
int LANBOX_DMXOUT_Init(unsigned long ipaddress, unsigned short port)
{
  WSADATA     Data;
  int         status;

  if (destSocket != INVALID_SOCKET)
  {
    closesocket(destSocket);
    destSocket = INVALID_SOCKET;
  }

   if (winsock_started == 0)
  {
    /* initialize the Windows Socket DLL */
    status=WSAStartup(MAKEWORD(1, 1), &Data);
    if (status != 0)
      return 1;

    winsock_started = 1;
  }

  /* setup address */
  destSockAddr.sin_addr.s_addr = ipaddress;
  destSockAddr.sin_port        = htons(port);
  destSockAddr.sin_family      = AF_INET;

  /* create a socket */
  destSocket=socket(AF_INET, SOCK_DGRAM, 0);
  if (destSocket == INVALID_SOCKET)
  {
    WSACleanup();

    winsock_started = 0;
    
    return 2;
  }

  packet_sequence = 0;

  return 0;
}

/********************************************************************
 * int LANBOX_DMXOUT_Done(void)
 ********************************************************************
 * Close the port and unload winsock 
 *  Parameters   : none
 *  Return value : 0 : Succes
 *
 *  Example of use:
 *   
 *   LANBOX_DMXOUT_Done();
 *
 *******************************************************************/
int LANBOX_DMXOUT_Done(void)
{
  if (destSocket != INVALID_SOCKET)
  {
    closesocket(destSocket);
    destSocket = INVALID_SOCKET;
  }

  if (winsock_started)
  {
    WSACleanup();

    winsock_started = 0;
  }

  return 0;
}

/********************************************************************
 * int LANBOX_DMXOUT_SetSlotValue(unsigned short slot, unsigned char value)
 ********************************************************************
 * Change the value of the slot to the value
 *  Parameters   : slot  : DMX address between 1 and 512
 *                 value : new value for slot
 *  Return value : 0 : Succes
 *                 1 : LANBOX not initialized
 *                 2 : Write failed
 *                 3 : Invalid slot
 *
 *  Example of use:
 *   
 *   LANBOX_DMXOUT_SetSlotValue(5, 234);
 *
 *******************************************************************/
int LANBOX_DMXOUT_SetSlotValue(unsigned short slot, unsigned char value)
{
  unsigned char buffer[1];

  if (destSocket == INVALID_SOCKET)
  {
    return 1;
  }

  if ( (slot < 1) || (slot > 512) )
    return 3;

  buffer[0] = value;

  if (lSendDMX(slot, buffer, 1) != 0)
    return 2;

  return 0;
}

/********************************************************************
 * int LANBOX_DMXOUT_SetSlotValues(unsigned short slot, 
 *                             unsigned char* values,
 *                             unsigned short nbofvalues)
 ********************************************************************
 * Change the values of the slots to the given values
 *  Parameters   : slot       : DMX address between 1 and 512
 *                 values     : new values for slots
 *                 nbofvalues : number of items in values
 *  Return value : 0 : Succes
 *                 1 : LANBOX not initialized
 *                 2 : Write failed
 *                 3 : Invalid slot
 *                 4 : nbofvalues invalid
 *
 *  Remarks:
 *
 *   The given slot is the first slot that is changed,
 *    this slot is set to the values[0] value. The other
 *    slots are changed until slot 512 is encodered or
 *    the number of values is set.
 *
 *   This function will do the bit stuffing when value 1
 *    is enconderd.
 *
 *  Example of use:
 *
 *   values[0] = 100;
 *   values[1] = 125;
 *   values[2] = 200;
 *
 *   LANBOX_DMXOUT_SetSlotValues(1, values, 3);
 *
 *******************************************************************/
int LANBOX_DMXOUT_SetSlotValues(unsigned short slot, 
                                unsigned char* values,
                                unsigned short nbofvalues)
{
  if (destSocket == INVALID_SOCKET)
  {
    return 1;
  }

  if ( (slot < 1) || (slot > 512) )
    return 3;

  if (nbofvalues == 0)
    return 0;

  if (nbofvalues > 512)
    return 4;

  if (slot + nbofvalues > 513)
  {
    nbofvalues = 513 - slot;
  }

  if (lSendDMX(slot, values, nbofvalues) != 0)
    return 2;

  return 0;
}

/********************************************************************
 * int LANBOX_DMXOUT_SetNbOfSlots(unsigned short nbofslots)
 ********************************************************************
 * Change the number of slots that is transmitted
 *  !!! NOT SUPPORTED BY THE LANBOX
 *
 *  Parameters   : nbofslots : number of slots from 32 to 512
 *  Return value : 0 : Succes
 *                 1 : LANBOX not initialized
 *                 2 : Write failed
 *                 3 : Invalid nbofslots
 *
 *  Example of use:
 *   
 *   LANBOX_DMXOUT_SetNbOfSlots(258);
 *
 *******************************************************************/
int LANBOX_DMXOUT_SetNbOfSlots(unsigned short nbofslots)
{
  if (destSocket == INVALID_SOCKET)
  {
    return 1;
  }

  if ( (nbofslots < 32) || (nbofslots > 512) )
    return 3;

  return 2;
}

/*
 * static int lSendDMX(unsigned short channel_offset, unsigned char* data, unsigned short datalen)
 *
 * Transmit the given values to the LanBox
 * Parameters are already checked
 *
 *  Parameters   : channel_offset : address of first channel
 *                 data           : holds values
 *                 datalen        : number of values in data
 *  Return value : 0 : Succes
 *                 2 : Write failed
 */
static int lSendDMX(unsigned short channel_offset, unsigned char* data, unsigned short datalen)
{
  unsigned char buffer[4 + 6 + 512]; // 4   : Packet header
                                     // 6   : Message header
                                     // 512 : Maximum data
  unsigned short index;
  int            numsend;

  // Increase sequence
  packet_sequence++;

  // Packet Header
  buffer[0] = 0xC0;
  buffer[1] = 0xB7;
  buffer[2] = HighByte(packet_sequence);
  buffer[3] = LowByte(packet_sequence);

  // Message Header
  buffer[4] = 0xCA;
  buffer[5] = 254;
  buffer[6] = HighByte(6 + datalen);
  buffer[7] = LowByte(6 + datalen);
  buffer[8] = HighByte(channel_offset);
  buffer[9] = LowByte(channel_offset);

  index = 10;
  while (datalen != 0)
  {
    buffer[index++] = *(data++);
    datalen--;
  }

  numsend = sendto(destSocket, (char*) buffer, index, 0, (LPSOCKADDR) &destSockAddr, sizeof(destSockAddr));
  if (numsend != index)
    return 2;

  return 0;
}
