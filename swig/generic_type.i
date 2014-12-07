/*
 *    This file is part of CasADi.
 *
 *    CasADi -- A symbolic framework for dynamic optimization.
 *    Copyright (C) 2010-2014 Joel Andersson, Joris Gillis, Moritz Diehl,
 *                            K.U. Leuven. All rights reserved.
 *    Copyright (C) 2011-2014 Greg Horn
 *
 *    CasADi is free software; you can redistribute it and/or
 *    modify it under the terms of the GNU Lesser General Public
 *    License as published by the Free Software Foundation; either
 *    version 3 of the License, or (at your option) any later version.
 *
 *    CasADi is distributed in the hope that it will be useful,
 *    but WITHOUT ANY WARRANTY; without even the implied warranty of
 *    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 *    Lesser General Public License for more details.
 *
 *    You should have received a copy of the GNU Lesser General Public
 *    License along with CasADi; if not, write to the Free Software
 *    Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA
 *
 */
#ifndef CASADI_GENERIC_TYPE_I
#define CASADI_GENERIC_TYPE_I

%include "shared_object.i"
%include <casadi/core/casadi_types.hpp>
%include <casadi/core/generic_type.hpp>

%fragment("to"{GenericType}, "header") {
  int to_GenericType(GUESTOBJECT *p, casadi::GenericType *m) {
    return meta< casadi::GenericType >::toCpp(p, m, $descriptor(casadi::GenericType *));
  }
 }
%casadi_typemaps_constref(GenericType, PRECEDENCE_GENERICTYPE, casadi::GenericType)
%my_generic_const_typemap(PRECEDENCE_GENERICTYPE,std::vector< casadi::GenericType >)

#endif // CASADI_GENERIC_TYPE_I
