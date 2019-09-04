source $stdenv/setup                                                             
                                                                                 
PATH=$perl/bin/:$help2man/bin/:$PATH                                             
                                                                                 
tar xvfz $src                                                                    
cd hello-*                                                                       
./configure --prefix=$out                                                        
make                                                                             
make install
