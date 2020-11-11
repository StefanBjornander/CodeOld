$C:\Users\Stefan\Documents\vagrant\homestead\code\code\setjmp.h,0$








typedef char * jmp_buf [ 3 ];
int setjmp ( jmp_buf env ) ;
void longjmp ( jmp_buf env , int value ) ;

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\SetJmp.c,0$
       

int setjmp ( jmp_buf buf ) {
   
 int * bp_pointer = register_bp ;
buf [ 0 ] = bp_pointer [ 0 ];
buf [ 1 ] = bp_pointer [ 1 ];
buf [ 2 ] = bp_pointer [ 2 ];
  

   
       
        
        
        
  
 return 0 ;
}

void longjmp ( jmp_buf buf , int return_value ) {
   
 register_bx = return_value ;
register_cx = buf [ 0 ];
register_di = buf [ 2 ];
register_bp = buf [ 1 ];
jump_register ( register_cx ) ;
  

   
    
     
     
     
    
  
 }
















