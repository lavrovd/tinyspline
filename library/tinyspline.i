// NOTE:
//
// This file configures all language independent settings. It gets 
// included in each concrete module.
//
// For some reason you MUST include this file AFTER typemaps.
// Use %include "tinyspline.i" to include this file.


// make control points and knots accessible
%include <carrays.i>
%array_functions(float, float_array);

// generate getter/setter
%include <attribute.i>
%attribute(TsBSpline, size_t, deg, deg, setDeg);
%attribute(TsBSpline, size_t, order, order, setOrder);
%attribute(TsBSpline, size_t, dim, dim);
%attribute(TsBSpline, size_t, nCtrlp, nCtrlp);
%attribute(TsBSpline, size_t, nKnots, nKnots);
%attribute(TsDeBoorNet, float, u, u);
%attribute(TsDeBoorNet, size_t, k, k);
%attribute(TsDeBoorNet, size_t, s, s);
%attribute(TsDeBoorNet, size_t, h, h);
%attribute(TsDeBoorNet, size_t, dim, dim);
%attribute(TsDeBoorNet, size_t, nAffected, nAffected);
%attribute(TsDeBoorNet, size_t, nPoints, nPoints);

// ignore wrapped structs and data fields
%ignore tsDeBoorNet;
%ignore TsDeBoorNet::data;
%ignore tsBSpline;
%ignore TsBSpline::data;

%{
    #include "tinyspline.h"
    #include "tinysplinecpp.h"
    struct TsFloatList {};
%}

%include "tinyspline.h"
%include "tinysplinecpp.h"
struct TsFloatList {};
