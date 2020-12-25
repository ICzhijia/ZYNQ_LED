

#include <stdio.h>
//#include "platform.h"



#include "xgpiops.h"
#include "xgpiops_hw.h"
#include "xil_io.h"


#include "XSCUGIC.H"
#include "XSCUGIC_HW.H"


static XGpioPs Gpio;


static void GpioHandler(void *CallBackRef, int Bank, u32 Status)
{



    XGpioPs* pGpioPs=(XGpioPs*)CallBackRef;

    XGpioPs_IntrDisablePin(pGpioPs,12);

    if(XGpioPs_ReadPin(&Gpio,7)==0)      XGpioPs_WritePin(&Gpio, 7, 0x01);
    else if(XGpioPs_ReadPin(&Gpio,7)==1) XGpioPs_WritePin(&Gpio, 7, 0x00);


    XGpioPs_IntrEnablePin(pGpioPs,12);

    XGpioPs_IntrClearPin(pGpioPs,12);

}

int main()

{
	 XGpioPs_Config* ConfigPtr;

     XScuGic ScuGic;
     XScuGic_Config* pScuGicCfg1;

     //GPIO������
     ConfigPtr = XGpioPs_LookupConfig(0);
     XGpioPs_CfgInitialize(&Gpio, ConfigPtr, ConfigPtr->BaseAddr);
     XGpioPs_SetDirectionPin(&Gpio,7,0x1);
     XGpioPs_SetOutputEnablePin(&Gpio,7,0x1);
     XGpioPs_WritePin(&Gpio, 7, 0x00);

     XGpioPs_SetDirectionPin(&Gpio,12,0x0);

     //GPIO�ж�����
     XGpioPs_SetIntrTypePin(&Gpio,12,XGPIOPS_IRQ_TYPE_EDGE_RISING);
     XGpioPs_SetCallbackHandler(&Gpio, (void *)&Gpio, GpioHandler);
     XGpioPs_IntrEnablePin(&Gpio,12);


     //GIC������
     pScuGicCfg1= XScuGic_LookupConfig(0);
     XScuGic_CfgInitialize(&ScuGic,pScuGicCfg1,pScuGicCfg1->CpuBaseAddress);

     XScuGic_Connect(&ScuGic, 52,(Xil_ExceptionHandler)XGpioPs_IntrHandler,(void *)&Gpio);
     XScuGic_SetPriorityTriggerType(&ScuGic,52,0xA0,0x01);//CPU0     bit0=1
     XScuGic_Enable(&ScuGic,52);


     //�ر�����
     Xil_ExceptionInit();
     Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,(Xil_ExceptionHandler)XScuGic_InterruptHandler,&ScuGic);
     Xil_ExceptionEnable();

    while(1)
    {


    }

}




///http://www.cnblogs.com/dragen/archive/2013/06/15/3138134.html























