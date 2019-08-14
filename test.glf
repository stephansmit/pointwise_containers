# Pointwise V18.2R2 Journal file - Mon Aug 12 15:55:56 2019
# Script to test the singularity image
package require PWI_Glyph 2.18.0

#pw::Application setUndoMaximumLevels 5
pw::Application reset
pw::Application markUndoLevel {Journal Reset}

pw::Application clearModified

set _DB(1) [pw::Point create]
$_DB(1) setPoint {10.4289795114263 4.97218358831711 -0}
pw::Application markUndoLevel {Create Point}

set _DB(2) [pw::Point create]
$_DB(2) setPoint {1.32100407144733 -9.21418636995828 -0}
pw::Application markUndoLevel {Create Point}

set _TMP(mode_1) [pw::Application begin Create]
  set _TMP(PW_1) [pw::SegmentSpline create]
  $_TMP(PW_1) addPoint [list 0 0 $_DB(1)]
  $_TMP(PW_1) addPoint {1.18195101129498 -9.63143254520167 -0}
  set _CN(1) [pw::Connector create]
  $_CN(1) addSegment $_TMP(PW_1)
  unset _TMP(PW_1)
  $_CN(1) calculateDimension
$_TMP(mode_1) end
unset _TMP(mode_1)
pw::Application markUndoLevel {Create 2 Point Connector}

set _TMP(mode_1) [pw::Application begin Create]
  set _TMP(PW_1) [pw::SegmentSpline create]
  $_TMP(PW_1) delete
  unset _TMP(PW_1)
$_TMP(mode_1) abort
unset _TMP(mode_1)
pw::Application save {test.pw}
