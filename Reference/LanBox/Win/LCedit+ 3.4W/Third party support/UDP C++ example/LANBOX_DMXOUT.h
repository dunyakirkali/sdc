/*
  File         : LANBOX_DMXOUT.h
  Creation date: 26/06/2004
  Creator      : Kurt Sterckx
  Description  :

   Routines for using the Cinetix DMX OUT Box in binary mode.
*/

#ifndef KS_LANBOX_DMXOUT_H
#define KS_LANBOX_DMXOUT_H

#include <tchar.h>

extern int LANBOX_DMXOUT_Init(unsigned long ipaddress, unsigned short port);
extern int LANBOX_DMXOUT_Done(void);
extern int LANBOX_DMXOUT_SetSlotValue(unsigned short slot, unsigned char value);
extern int LANBOX_DMXOUT_SetSlotValues(unsigned short slot, 
                                   unsigned char* values,
                                   unsigned short nbofvalues);
extern int LANBOX_DMXOUT_SetNbOfSlots(unsigned short nbofslots);

#endif /* KS_LANBOX_DMXOUT_H */
