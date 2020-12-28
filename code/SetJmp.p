$C:\Users\Stefan\Documents\vagrant\homestead\code\code\setjmp.h,0$
 typedef void * jmp_buf [ 3 ];
int setjmp ( jmp_buf env ) ;
void longjmp ( jmp_buf env , int value ) ;

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\SetJmp.c,0$
        
 
    
 int setjmp ( jmp_buf buf ) {
void ** rbp_pointer = register_rbp ;
buf [ 0 ] = rbp_pointer [ 0 ];
buf [ 1 ] = rbp_pointer [ 1 ];
buf [ 2 ] = rbp_pointer [ 2 ];
return 0 ;
}

void longjmp ( jmp_buf buf , int return_value ) {
register_ebx = return_value ;
register_rcx = buf [ 0 ];
register_rdi = buf [ 2 ];
register_rbp = buf [ 1 ];
jump_register ( register_rcx ) ;
} 
   
 
    
      
     
        
        
        
  


        
   
     
     
     
   
 
   
