#ifndef __STDARG_H__
#define __STDARG_H__

#define va_list char*
#define va_start(ap, lastarg) (ap = ((char*) &lastarg) + sizeof (lastarg))
#define va_arg(ap, type) (*((ap += sizeof (type)), \
                         ((type*) (ap - sizeof (type)))))
#define va_end(ap)

#endif
