Vim�UnDo� � �?�]d�ZKAHV��S�3� ݗ�e�|�=      
int xG,yG;                              d�c�    _�                              ����                                                                                                                                                                                                                                                                                                                                                             d�c�    �      !   !      movePoint();5��                          �                     5�_�                             ����                                                                                                                                                                                                                                                                                                                                                             d�c�    �               
int xG,yG;�               void movePoint(){�               void movePoint(){   if (gb.getKey() > 0) {�               if(gb.getKey()>0){�               if(gb.getKey()>0){     gb.wipePoint(xG, yG);�                 gb.wipePoint(xG,yG);�      	           gb.wipePoint(xG,yG);     2  if (gb.getKey() == 4 && gb.isFree(xG - 1, yG)) {�      	         *  if(gb.getKey()==4&&gb.isFree(xG-1,yG)) {�      
         *  if(gb.getKey()==4&&gb.isFree(xG-1,yG)) {   	    xG--;�               	    xG--;     }�   	              }   2  if (gb.getKey() == 5 && gb.isFree(xG + 1, yG)) {�   
            *  if(gb.getKey()==5&&gb.isFree(xG+1,yG)) {�   
            *  if(gb.getKey()==5&&gb.isFree(xG+1,yG)) {     xG++;�                 xG++;     }�                 }   2  if (gb.getKey() == 6 && gb.isFree(xG, yG + 1)) {�               *  if(gb.getKey()==6&&gb.isFree(xG,yG+1)) {�               *  if(gb.getKey()==6&&gb.isFree(xG,yG+1)) {   	    yG++;�               	    yG++;     }�                 }   2  if (gb.getKey() == 3 && gb.isFree(xG, yG - 1)) {�               *  if(gb.getKey()==3&&gb.isFree(xG,yG-1)) {�               *  if(gb.getKey()==3&&gb.isFree(xG,yG-1)) {   	    yG--;�               	    yG--;     }�                 }   }�               }     gb.drawPoint(xG, yG);�                 gb.drawPoint(xG,yG);�                 gb.drawPoint(xG,yG);     delay(15);�                 delay(15);        }�               void setup() {     Serial.begin(9600);�                 Serial.begin(9600);     gb.begin(0);�                 gb.begin(0);     // gb.testMatrix(10);�                 //gb.testMatrix(10);�                 void loop() {       movePoint(); }�                     movePoint();   }5��                        �                    �                       �                    �                         �                     �                      �                    �                      �                    �                      �                    �                        r                    �                      e                    �                         a                     �                      N                    �                       L                    �       	               H             	       �       *               >                    �       %                  9                     �       $                  8                     �       "                  6                     �                         )                     �                         '                     �                         &                     �                         $                     �                                              �                                   	       �       	                            	       �       *                                   �       %                                        �       $                  �                      �       "                  �                      �                         �                      �                         �                      �                         �                      �                         �                      �                         �                      �                      �              	       �                      �              	       �    
   *               �                     �    
   $                  �                      �    
   "                  �                      �    
   !                  �                      �    
                     �                      �    
                     �                      �    
                     �                      �    
                     �                      �    
                     �                      �    	                  �              	       �       	               �              	       �       *               �                     �       $                  �                      �       "                  �                      �       !                  �                      �                         �                      �                         ~                      �                         }                      �                         {                      �                         o                      �                      h              	       �                         d                      �                      Q              	       �                         P                      �                         N                      �                         M                      �                         A                      �                       >                     �                         =                      �                         (                      5��