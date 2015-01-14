/* ****************************************************************** */
/* OSM BRIGHT for Imposm                                              */
/* ****************************************************************** */

/* GNA FORK

/* GENERAL NOTES
 * There is a slight performance cost in rendering line-caps.  An
 * effort has been made to restrict line-cap definitions to styles
 * where the results will be visible (lines at least 2 pixels thick).
 */

/* ================================================================== */
/* FONTS
/* ================================================================== */

/* directory to load fonts from in addition to the system directories */
Map { font-directory: url(./fonts); }

/* set up font sets for various weights and styles */
@sans_lt:           "Open Sans Regular","DejaVu Sans Book","unifont Medium";
@sans_lt_italic:    "Open Sans Italic","DejaVu Sans Italic","unifont Medium";
@sans:              "Open Sans Semibold","DejaVu Sans Book","unifont Medium";
@sans_italic:       "Open Sans Semibold Italic","DejaVu Sans Italic","unifont Medium";
@sans_bold:         "Open Sans Bold","DejaVu Sans Bold","unifont Medium";
@sans_bold_italic:  "Open Sans Bold Italic","DejaVu Sans Bold Italic","unifont Medium";

/* Variable to globally increase or decrease font sizes. */
@text_adjust: 0;

/* ================================================================== */
/* LANDUSE & LANDCOVER COLORS
/* ================================================================== */

@land:              rgb(235, 235, 235);
@water:             rgb(200, 205, 210);
@grass:             rgb(216, 223, 216);
@beach:             rgb(210, 210, 210);
@park:              @grass;
@cemetery:          @grass * 0.9;
@wooded:            @grass * 0.95;
@agriculture:       @grass * 0.9;

@building:          rgb(150, 150, 150);
@hospital:          @land * 0.95;
@school:            @land * 0.95;
@sports:            @grass * 0.9;

@residential:       @land * 0.95;
@commercial:        @land * 0.95;
@industrial:        @land * 0.95;
@parking:           @land * 0.95;

/* ================================================================== */
/* ROAD COLORS
/* ================================================================== */

/* For each class of road there are three color variables:
 * - line: for lower zoomlevels when the road is represented by a
 *         single solid line.
 * - case: for higher zoomlevels, this color is for the road's
 *         casing (outline).
 * - fill: for higher zoomlevels, this color is for the road's
 *         inner fill (inline).
 */

@motorway_line:     rgb(255, 255, 255);
@motorway_fill:     @motorway_line;
@motorway_case:     @land * 0.8;

@trunk_line:        @motorway_line * 0.98;
@trunk_fill:        @motorway_line;
@trunk_case:        @land * 0.9;

@primary_line:      @motorway_line * 0.97;
@primary_fill:      @motorway_line;
@primary_case:      @land * 0.9;

@secondary_line:    @motorway_line * 0.96;
@secondary_fill:    @motorway_line;
@secondary_case:    @land * 0.9;

@standard_line:     @motorway_line * 0.95;
@standard_fill:     @motorway_line;
@standard_case:     @land * 0.9;

@pedestrian_line:   @motorway_line * 0.95;
@pedestrian_fill:   @pedestrian_line;
@pedestrian_case:   @land * 0.9;

@cycle_line:        @pedestrian_line;
@cycle_fill:        @pedestrian_fill;
@cycle_case:        @land * 0.9;

@rail_line:         @motorway_line * 0.5;
@rail_fill:         @rail_line;
@rail_case:         @land * 0.9;

@aeroway:           @land * 0.9;

/* ================================================================== */
/* BOUNDARY COLORS
/* ================================================================== */

@admin_2:           rgb(60, 60, 60);

/* ================================================================== */
/* LABEL COLORS
/* ================================================================== */

@place_halo:        fadeout(white,30%);
@halo_radius: 		0.8;

@country_text:      rgb(80, 80, 80);
@country_halo:      @place_halo;

@state_text:        rgb(80, 80, 80);
@state_halo:        @place_halo;

@city_text:         rgb(70, 70, 70);
@city_halo:         @place_halo;

@town_text:         rgb(100, 100, 100);
@town_halo:         @place_halo;

@poi_text:          rgb(130, 130, 130);

@road_text:         rgb(120, 120, 120);
@road_halo:         white;

@other_text:        rgb(130, 130, 130);
@other_halo:        @place_halo;

@locality_text:     rgb(170, 170, 170);
@locality_halo:     @land;

@village_text:      rgb(130, 130, 130);
@village_halo:      @place_halo;

/* ****************************************************************** */



