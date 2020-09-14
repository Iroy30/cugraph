from cugraph.structure.graph_new cimport *
from libcpp cimport bool

def experimental_func():

    cdef unique_ptr[handle_t] handle_ptr
    handle_ptr.reset(new handle_t())

    cdef const vector[const int*] v_off
    cdef const vector[const int*] v_ind
    cdef const vector[const float*] v_wts
    cdef const vector[int] v_seg_off
    cdef const partition_t[int] partition
    cdef int* c_offsets
    cdef int* c_indices
    cdef float* c_weights

    #if float and mnmg:
    g1=new graph_view_t[int,int,float,FALSE,TRUE](handle_ptr.get()[0], v_off, v_ind, v_wts, v_seg_off, partition, <int>3, <int>5, <bool>0, <bool>0,<bool>0, <bool>0,<bool>0)
    #if float and sg:
    g2=new graph_view_t[int,int,float,FALSE,FALSE](handle_ptr.get()[0], <int*>c_offsets, <int*>c_indices, <float*>c_weights, v_seg_off, <int>3, <int>5, <bool>0, <bool>0,<bool>0, <bool>0, <bool>0)

