# BrainBinary Structure  
  
This is the BrainBinary flutter projects structure.  
  
## Key points
  
- MVVM  
- GetX context management  
- Resource globalization  
  
### GetX Navigation   

Change `MaterialApp` to `GetMaterialApp` 
  
- Navigate to new screen  
  
	  Get.to(() => Homepage());  
  
- Navigate to new screen and don’t go to back screen(PushReplacement)  
  
	  Get.off(() => HomePage());  
  
- Navigate to new screen and remove all previous screen(PushAndRemoveUntil)  
  
	  Get.offAll(() => HomePage());  
  
- Back to previous screen  
  
	  Get.back();
	  
