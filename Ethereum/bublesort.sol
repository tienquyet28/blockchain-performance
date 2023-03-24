// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.7.3;

 contract BubbleSort {
  
    function sort(uint[] memory data ) public returns(uint[] memory ) {
        Bubblesort(data, uint(data.length));
        return data;
    }
  
    function Bubblesort(uint[] memory arr, uint length) internal {
        uint j;
        uint i;
        for(i=0; i< length-1; i++) {
             for (j=0; j<length-i-1;j++)
             {
                if(arr[j] > arr[j+1]){
                    uint t = arr[j];
                    arr[j] = arr[j+1];
                    arr[j+1] = t;
                 } 
            }
        }
      
    }
}
    
