#define scr_mergesort
/// scr_mergesort(ds_list list, script comparator)
{
  var values = argument0;
  var comparator = argument1;
  var helpers = ds_list_create();
  var number = ds_list_size(values);
  
  scr_mergesortHelper(values, comparator, helpers, 0, number - 1);
}


#define scr_mergesortHelper
/// scr_mergesortHelper(values, comparator, helperList, low, high)
{
  var values = argument0;
  var comparator = argument1;
  var helperList = argument2;
  var low = argument3;
  var high = argument4;

  if (low < high) {
    var middle = floor (low + (high - low) / 2);
    scr_mergesortHelper(values, comparator, helperList, low, middle);  
    scr_mergesortHelper(values, comparator, helperList, middle + 1, high);
    scr_merge(values, comparator, helperList, low, middle, high);
  }
}

#define scr_merge
/// scr_merge(values, comparator, helperList, low, middle, high)
{  
  var values = argument0;
  var comparator = argument1;
  var helperList = argument2;
  var low = argument3;
  var middle = argument4;
  var high = argument5;
  // copy values into helperList
  for (var i = low; i <= high; i++) {
    helperList[| i] = values[| i];
  }

  var i = low;
  var j = middle + 1;
  var k = low;
  // copy smallest vals from left or right side back to original
  while (i <= middle && j <= high) {
    if (script_execute(comparator, helperList[| i], helperList[| j]) <= 0) {
      values[| k] = helperList[| i];
      i++;
    } else {
      values[| k] = helperList[| j];
      j++;
    }
    k++;
  }
  // copy rest of left side ofa rray into target
  while (i <= middle) {
    values[| k] = helperList[| i];
    k++; i++;
  }  
}


#define scr_numericComparator
///scr_numericComparator(a, b) 
{
  return a - b;
}