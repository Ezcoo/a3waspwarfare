/*  ////////////////////////////////////////////////////////////////////////////////
\   \ GLX - Macros
 \   \------------------------------------------------------------------------------
  \   \ Macros
   \   \----------------------------------------------------------------------------
   /   / By =\SNKMAN/=
  /   /-----------------------------------------------------------------------------
*/   ///////////////////////////////////////////////////////////////////////////////
#define GLX_DeleteAt(_array, _index, _object); (_array select _index) deleteAt ( (_array select _index) find _object);