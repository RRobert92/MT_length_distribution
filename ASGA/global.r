################################################################################
# Shiny Global
#
# (c) 2019 Kiewisz
# This code is licensed under GPL V3.0 license (see LICENSE.txt for details)
#
# Author: Robert Kiewisz
# Created: 2020-05-20
# Reviewed: Robert Kiewisz 28/08/2020 (v0.31.1)
################################################################################
# Title of the app -------------------------------------------------------------
App_title <- "ASGA v0.33"
CC <- "© Copyright GPL V3.0 2019-2020, Robert Kiewisz"

# Global CSS  ------------------------------------------------------------------
includeCSS("www/css/style.css")

js_code <- "
shinyjs.browseURL = function(url) {
  window.open(url,'_blank');
}
"

# Global HTML  -----------------------------------------------------------------
source("www/Home/index.R")
source("www/Get_Started/index.R")

# Global Utility  --------------------------------------------------------------
source("bin/Utility/Library.R")
source("bin/Utility/Check_Data.R")
source("bin/Utility/Upload_Data.R")
source("bin/Utility/Setting_Buttons.R")
source("bin/Utility/Pre_Analysis.R")
source("bin/Utility/Load_Data.R")
source("bin/Utility/Load_Amira.R")
source("bin/Utility/Save_Data.R")
source("bin/Utility/Save_Amira.R")
source("bin/Utility/Error_Messages.R")

# Global server settings  ------------------------------------------------------
options(shiny.maxRequestSize = 1024 * 1024^2)
options(shiny.host = "127.0.0.1")
options(shiny.port = 7878)

# Global tool settings  --------------------------------------------------------
DataTest <<- 0
numfiles <<- 0
Minus_Threshold <<- 1.68 # Minus end distance to the pole [um]
Minus_Distance <<- 0.035 # Minus end distance of any MT to the KMT [um]
MT_point_config <<- 0.035 # Distance of any MT to the MT [um]
Fiber_area_config <<- 24

# Global Functions  ------------------------------------------------------------
  # Pre_Analysis 
source("bin/Tools/Pre_Analysis/Sort_by_Fiber.R")
source("bin/Tools/Pre_Analysis/Select_Points.R")
source("bin/Tools/Pre_Analysis/Find_XYZ.R")
source("bin/Tools/Pre_Analysis/Kinetochore_Position.R")
source("bin/Tools/Pre_Analysis/Sort_All_Points_to_Start_From_the_Kinetochore.R")
source("bin/Tools/Pre_Analysis/T_Relative_Position.R")
  # Analysis 
source("bin/Tools/Analysis/Length_Distiribution.R")
source("bin/Tools/Analysis/No_of_KMTs_connected_to_the_Pole.R")
source("bin/Tools/Analysis/No_of_KMTs.R")
source("bin/Tools/Analysis/T_Inter_Kinetochore_Dist.R")
source("bin/Tools/Analysis/T_KMT_Curvature.R")
source("bin/Tools/Analysis/T_End_Morphology.R")
source("bin/Tools/Analysis/T_Fiber_Area.R")
source("bin/Tools/Analysis/T_KMT_Minus_End_Seeds.R")
source("bin/Tools/Analysis/T_Fiber_Length_Curvature.R")
source("bin/Tools/Analysis/T_Kinetochore_Area.R")
source("bin/Tools/Analysis/T_KMT_Torque.R")
source("bin/Tools/Analysis/T_Bridging_MT.R")
  # Output report plots
source("bin/Utility/Report.R")
  # Statistic analysis tools
source("bin/Tools/Analysis/FWHM.R")

# Global Packages  -------------------------------------------------------------
source("bin/Packages/Analysis/A_KMT_number.R")
source("bin/Packages/Analysis/A_IKD.R")
source("bin/Packages/Analysis/A_Curvature.R")
source("bin/Packages/Analysis/A_End_Morphology.R")
source("bin/Packages/Analysis/A_Fiber_Area.R")
source("bin/Packages/Analysis/A_KMT_Minus_End_Seeds.R")
source("bin/Packages/Analysis/A_Fiber_Length_&_curvature.R")
source("bin/Packages/Analysis/A_Kinetochore_Area.R")
source("bin/Packages/Analysis/A_KMT_Torque.R")
source("bin/Packages/Analysis/A_MT_Bridging.R")

# Test Unit --------------------------------------------------------------------
source("tests/Test_Output.R")