/////////////////////////////////////////////////////////////////////////////////////////////
// Matrix Functions
/////////////////////////////////////////////////////////////////////////////////////////////
#include "matrix.h"

/////////////////////////////////////////////////////////////////////////////////////////////
// IdentityMatrix
/////////////////////////////////////////////////////////////////////////////////////////////
D3DMATRIX IdentityMatrix()
{
	return D3DMATRIX(1,0,0,0, 0,1,0,0, 0,0,1,0, 0,0,0,1);
}

/////////////////////////////////////////////////////////////////////////////////////////////
// ZeroMatrix
/////////////////////////////////////////////////////////////////////////////////////////////
D3DMATRIX ZeroMatrix(void)
{
	D3DMATRIX ret;
	for (int i=0; i<4; i++)
		for (int j=0; j<4; j++)
			ret(i, j) = 0.0f;
	return ret;
}

/////////////////////////////////////////////////////////////////////////////////////////////
// MatrixMult
/////////////////////////////////////////////////////////////////////////////////////////////
D3DMATRIX MatrixMult(const D3DMATRIX a, const D3DMATRIX b)
{
	D3DMATRIX ret = ZeroMatrix();
	for (int i=0; i<4; i++)
		for (int j=0; j<4; j++)
			for (int k=0; k<4; k++)
				ret(i, j) += a(k, j) * b(i, k);
	return ret;
}

/////////////////////////////////////////////////////////////////////////////////////////////
// Translate
/////////////////////////////////////////////////////////////////////////////////////////////
D3DMATRIX Translate(const float dx, const float dy, const float dz)
{
	D3DMATRIX ret = IdentityMatrix();
	ret(3, 0) = dx;
	ret(3, 1) = dy;
	ret(3, 2) = dz;
	return ret;
}

/////////////////////////////////////////////////////////////////////////////////////////////
// RotateX
/////////////////////////////////////////////////////////////////////////////////////////////
D3DMATRIX RotateX(const float rads)
{
	float cosine = (float)cos(rads);
	float sine = (float)sin(rads);
	D3DMATRIX ret = IdentityMatrix();
	ret(1,1) = cosine;
	ret(2,2) = cosine;
	ret(1,2) = -sine;
	ret(2,1) = sine;
	return ret;
}

/////////////////////////////////////////////////////////////////////////////////////////////
// RotateY
/////////////////////////////////////////////////////////////////////////////////////////////
D3DMATRIX RotateY(const float rads)
{
	float cosine = (float)cos(rads);
	float sine = (float)sin(rads);
	D3DMATRIX ret = IdentityMatrix();
	ret(0,0) = cosine;
	ret(2,2) = cosine;
	ret(0,2) = sine;
	ret(2,0) = -sine;
	return ret;
}

/////////////////////////////////////////////////////////////////////////////////////////////
// RotateZ
/////////////////////////////////////////////////////////////////////////////////////////////
D3DMATRIX RotateZ(const float rads)
{
	float cosine = (float)cos(rads);
	float sine = (float)sin(rads);
	D3DMATRIX ret = IdentityMatrix();
	ret(0,0) = cosine;
	ret(1,1) = cosine;
	ret(0,1) = -sine;
	ret(1,0) = sine;
	return ret;
}

/////////////////////////////////////////////////////////////////////////////////////////////
// Scale
/////////////////////////////////////////////////////////////////////////////////////////////
D3DMATRIX Scale(const float size)
{
	D3DMATRIX ret = IdentityMatrix();
	ret(0, 0) = size;
	ret(1, 1) = size;
	ret(2, 2) = size;
	return ret;
}

/////////////////////////////////////////////////////////////////////////////////////////////
// ViewMatrix
/////////////////////////////////////////////////////////////////////////////////////////////
D3DMATRIX ViewMatrix(const D3DVECTOR from,
                     const D3DVECTOR at,
                     const D3DVECTOR world_up,
                     const float roll)
{
	D3DMATRIX  view = IdentityMatrix();
	D3DVECTOR  up, right, view_dir;

	view_dir = Normalize(at - from);
	right = CrossProduct(world_up, view_dir);
	up = CrossProduct(view_dir, right);
	right = Normalize(right);
	up = Normalize(up);
	view(0,0) = right.x;
	view(1,0) = right.y;
	view(2,0) = right.z;
	view(0,1) = up.x;
	view(1,1) = up.y;
	view(2,1) = up.z;
	view(0,2) = view_dir.x;
	view(1,2) = view_dir.y;
	view(2,2) = view_dir.z;
	view(3,0) = -DotProduct(right, from);
	view(3,1) = -DotProduct(up, from);
	view(3,2) = -DotProduct(view_dir, from);

	if (roll != 0.0f)
	{
		view = MatrixMult(RotateZ(-roll), view); 
	}

	return view;
}

/////////////////////////////////////////////////////////////////////////////////////////////
// ProjectionMatrix
/////////////////////////////////////////////////////////////////////////////////////////////
D3DMATRIX ProjectionMatrix(const float near_plane,
                           const float far_plane,
                           const float fov)
{
	float c = (float)cos(fov*0.5);
	float s = (float)sin(fov*0.5);
	float Q = s/(1.0f - near_plane/far_plane);
	D3DMATRIX ret = ZeroMatrix();
	ret(0, 0) = c;
	ret(1, 1) = c;
	ret(2, 2) = Q;
	ret(3, 2) = -Q*near_plane;
	ret(2, 3) = s;
	return ret;
}

/////////////////////////////////////////////////////////////////////////////////////////////
// MATRIX construtor
/////////////////////////////////////////////////////////////////////////////////////////////
MATRIX::MATRIX(void)
{
	_11 = _12 = _13 = _14 = 0.0f;
	_21 = _22 = _23 = _24 = 0.0f;
	_31 = _32 = _33 = _34 = 0.0f;
	_41 = _42 = _43 = _44 = 0.0f;
}

/////////////////////////////////////////////////////////////////////////////////////////////
// MATRIX Identity
/////////////////////////////////////////////////////////////////////////////////////////////
void MATRIX::Identity(void)
{
	Zero();
	_11 = _22 = _33 = _44 = 1;
}

/////////////////////////////////////////////////////////////////////////////////////////////
// MATRIX Zero
/////////////////////////////////////////////////////////////////////////////////////////////
void MATRIX::Zero(void)
{
	_11 = _12 = _13 = _14 = 0.0f;
	_21 = _22 = _23 = _24 = 0.0f;
	_31 = _32 = _33 = _34 = 0.0f;
	_41 = _42 = _43 = _44 = 0.0f;
}

/////////////////////////////////////////////////////////////////////////////////////////////
// MATRIX Multiply
/////////////////////////////////////////////////////////////////////////////////////////////
void MATRIX::Multiply(D3DMATRIX mat)
{
}

/////////////////////////////////////////////////////////////////////////////////////////////
// MATRIX Translate
/////////////////////////////////////////////////////////////////////////////////////////////
void MATRIX::Translate(float dx, float dy, float dz)
{
	Identity();
	_41 = dx;
	_42 = dy;
	_43 = dz;
}

/////////////////////////////////////////////////////////////////////////////////////////////
// MATRIX RotateX
/////////////////////////////////////////////////////////////////////////////////////////////
void MATRIX::RotateX(double rads)
{
	double cosine = cos(rads);
	double sine = sin(rads);
	Identity();

	_22 = cosine;
	_33 = cosine;
	_32 = -sine;
	_23 = sine;
}

/////////////////////////////////////////////////////////////////////////////////////////////
// MATRIX RotateY
/////////////////////////////////////////////////////////////////////////////////////////////
void MATRIX::RotateY(double rads)
{
	double cosine = cos(rads);
	double sine = sin(rads);
	Identity();

	_11 = cosine;
	_33 = cosine;
	_13 = -sine;
	_31 = sine;
}

/////////////////////////////////////////////////////////////////////////////////////////////
// MATRIX RotateZ
/////////////////////////////////////////////////////////////////////////////////////////////
void MATRIX::RotateZ(double rads)
{
	double cosine = cos(rads);
	double sine = sin(rads);
	Identity();

	_11 = cosine;
	_22 = cosine;
	_21 = -sine;
	_12 = sine;
}

/////////////////////////////////////////////////////////////////////////////////////////////
// MATRIX Scale
/////////////////////////////////////////////////////////////////////////////////////////////
void MATRIX::Scale(float x, float y, float z)
{
	Identity();
	_11 = x;
	_22 = y;
	_33 = z;
}

/////////////////////////////////////////////////////////////////////////////////////////////
// MATRIX SetView
/////////////////////////////////////////////////////////////////////////////////////////////
void MATRIX::SetView(D3DVECTOR from, D3DVECTOR at, D3DVECTOR world_up, float roll)
{
	D3DVECTOR  up, right, view_dir;
	Identity();

	view_dir = Normalize(at - from);
	right = CrossProduct(world_up, view_dir);
	up = CrossProduct(view_dir, right);
	right = Normalize(right);
	up = Normalize(up);

	_11	= right.x;
	_21	= right.y;
	_31	= right.z;
	_12	= up.x;
	_22	= up.y;
	_32	= up.z;
	_13	= view_dir.x;
	_23	= view_dir.y;
	_33	= view_dir.z;
	_41	= -DotProduct(right, from);
	_42	= -DotProduct(up, from);
	_43	= -DotProduct(view_dir, from);

	if(roll != 0.0f)
	{
//		view = MatrixMult(RotateZ(-roll), view); 
	}
}

/////////////////////////////////////////////////////////////////////////////////////////////
// MATRIX SetProjection
/////////////////////////////////////////////////////////////////////////////////////////////
void MATRIX::SetProjection(float near_plane, float far_plane, float fov)
{
	float c = (float)cos(fov * 0.5);
	float s = (float)sin(fov * 0.5);
	float Q = s / (1.0f - near_plane / far_plane);

	Zero();
	_11 = c;
	_22 = c;
	_33 = Q;
	_43	= -Q * near_plane;
	_34	= s;
}