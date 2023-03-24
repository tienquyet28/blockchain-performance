// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.7.3;

 contract merge_sort {

    function sort(uint[] memory data) public pure returns(uint[] memory) {
        mergeSort(data, uint(0), uint(data.length - 1));
        return data;
    }
    function mergeSort(uint []memory arr, uint l, uint r) internal pure{
   
    if (l < r) {

      // m is the point where the array is divided into two subarrays
      uint m=(l +r) / 2;

      mergeSort(arr,l,m);
      mergeSort(arr,m + 1,r);

      // Merge the sorted subarrays
      merge(arr, l, m, r);
      }
   }
     // Merge two subarrays L and M into arr
    function merge(uint [] memory arr, uint p, uint q,uint r)internal pure{

    // Create L ← A[p..q] and M ← A[q+1..r]
    uint n1 = q - p + 1;
    uint n2 = r - q;
    uint[] memory L=new uint[](n1);
    uint[]memory M=new uint[](n2);
    uint i;
    uint j;
    for (i = 0; i < n1; i++)
       L[uint(i)] = arr[uint(p + i)];
    for ( j = 0; j < n2; j++)
       M[uint(j)] = arr[uint(q + 1 + j)];

    // Maintain current index of sub-arrays and main array
    i=0;
    j=0;
    uint k = p;
    while (i < n1 && j < n2) {
      if (L[i] <= M[j]) {
        arr[uint(k)] = L[uint(i)];
        i++;
      } else {
        arr[uint(k)] = M[uint(j)];
        j++;
      }
      k++;
    }

    while (i < n1) {
      arr[uint(k)] = L[uint(i)];
      i++;
      k++;
    }

    while (j < n2) {
      arr[uint(k)] = M[uint(j)];
      j++;
      k++;
        }
    
   }
 
 }
