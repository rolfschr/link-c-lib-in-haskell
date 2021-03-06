{-# LANGUAGE ForeignFunctionInterface #-} -- enabling the FFI

module LibAb where -- declaring the module

foreign import ccall "liba_func" c_liba_func :: Double -> IO Double -- importing the C function

liba_func :: Double -> IO Double
liba_func = c_liba_func -- wrapping the C function inside a Haskell function
