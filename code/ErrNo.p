$C:\Users\Stefan\Documents\vagrant\homestead\code\code\ErrNo.h,0$
    
    
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 extern enum { NO_ERROR , NO_FUNCTION , NO_FILE , NO_PATH , NO_HANDLE , NO_ACCESS , EDOM , 
 ERANGE , EILSEQ , FOPEN , FFLUSH , FCLOSE , NO_MODE , FWRITE , FREAD , FSEEK , 
 FTELL , FSIZE , FREMOVE , FRENAME , FTEMPNAME , FTEMPFILE }; 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 extern int errno ; 
 
   
 
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\ErrNo.c,0$
        
 
 enum { NO_ERROR , NO_FUNCTION , NO_FILE , NO_PATH , NO_HANDLE , NO_ACCESS , EDOM , 
 ERANGE , EILSEQ , FOPEN , FFLUSH , FCLOSE , NO_MODE , FWRITE , FREAD , FSEEK , 
 FTELL , FSIZE , FREMOVE , FRENAME , FTEMPNAME , FTEMPFILE }; 
 
 int errno = 0 ; 
