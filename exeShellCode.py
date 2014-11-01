
import ctypes


payload = "\x00\x00\x00\x00\x00\x00"
memory = ctypes.create_string_buffer(payload, len(payload))

shellcode = ctypes.cast(memory, ctypes.CFUNCTYPE(ctypes.c_void_p))
shellcode()
