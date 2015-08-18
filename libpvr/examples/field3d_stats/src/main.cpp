//-*-c++-*--------------------------------------------------------------------//

/* This example produces statistics for the Field3D library
 * 
 * 
 *
 */

//----------------------------------------------------------------------------//
// Includes
//----------------------------------------------------------------------------//

#include <iostream>

#include <boost/timer/timer.hpp>

#include <pvr/VoxelBuffer.h>

//----------------------------------------------------------------------------//
// Namespaces
//----------------------------------------------------------------------------//

using namespace std;
using namespace Field3D;

//----------------------------------------------------------------------------//

int main()
{
  // DenseField memory stats 

  {
    DenseField<float> field;
    for (int order = 6; order <= 9; order++) {
      int size = 1 << order;
      field.setSize(Imath::V3i(size));
      cout << "Memory use for DenseField of size: " << size << endl
           << "  " << static_cast<float>(field.memSize()) / (1024 * 1024) 
           << " MB" << endl;
    }
  }
  
  // DenseField iteration stats - explicit for loop

  {
    DenseField<float> field;
    float sum = 0.0;
    for (int order = 6; order <= 9; order++) {
      int size = 1 << order;
      field.setSize(Imath::V3i(size));
      boost::timer::auto_cpu_timer timer;
      for (int k = 0; k < size; k++) {
        for (int j = 0; j < size; j++) {
          for (int i = 0; i < size; i++) {
            sum += field.fastValue(i, j, k);
          }
        }
      }
	  timer.stop();
      cout << "Time to iterate explicitly over DenseField of size: " << size << endl << "  " ;
	  timer.report();
    }
  }

  // DenseField iteration stats

  {
    DenseField<float> field;
    float sum = 0.0;
    for (int order = 6; order <= 9; order++) {
      int size = 1 << order;
      field.setSize(Imath::V3i(size));
      boost::timer::auto_cpu_timer timer;
      for (DenseField<float>::const_iterator i = field.cbegin(),
             end = field.cend(); i != end; ++i) {
        sum += *i;
      }
	  timer.stop();
      cout << "Time to iterate over DenseField of size: " << size << endl  << "  ";
	  timer.report();
    }
  }

  // SparseField memory stats 

  {
    SparseField<float> field;
    for (int order = 6; order <= 9; order++) {
      int size = 1 << order;
      field.setSize(Imath::V3i(size));
      cout << "Memory use for SparseField of size: " << size << endl
           << "  " << static_cast<float>(field.memSize()) / (1024) 
           << " KB" << endl;
    }
  }

  // SparseField iteration stats - explicit for loop

  {
    SparseField<float> field;
    float sum = 0.0;
    for (int order = 6; order <= 9; order++) {
      int size = 1 << order;
      field.setSize(Imath::V3i(size));
      boost::timer::auto_cpu_timer timer;
      for (int k = 0; k < size; k++) {
        for (int j = 0; j < size; j++) {
          for (int i = 0; i < size; i++) {
            sum += field.fastValue(i, j, k);
          }
        }
      }
	  timer.stop();
      cout << "Time to iterate explicitly over SparseField of size: " << size << endl << "  ";
	  timer.report();
    }
  }

  // SparseField iteration stats

  {
    SparseField<float> field;
    for (int order = 6; order <= 9; order++) {
      int size = 1 << order;
      field.setSize(Imath::V3i(size));
      boost::timer::auto_cpu_timer timer;
      for (SparseField<float>::block_iterator b = field.blockBegin(),
             bEnd = field.blockEnd(); b != bEnd; ++b) {
        Imath::Box3i block = b.blockBoundingBox();
        for (SparseField<float>::iterator i = field.begin(block),
               end = field.end(block); i != end; ++i) {
          *i = 0.0;
        }
      }
	  timer.stop();
      cout << "Time to iterate over SparseField of size: " << size << endl
           << "  " ;
	  timer.report();
      cout << "  " << field.memSize() / (1024 * 1024) << " MB" << endl;
    }
  }

}

//----------------------------------------------------------------------------//
