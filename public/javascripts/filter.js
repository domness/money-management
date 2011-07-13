/**
 *  jQuery ColumnFilter Plugin
 *  @requires jQuery v1.2.6 or greater
 *  http://hernan.amiune.com/labs
 *
 *  Copyright (c)  Hernan Amiune (hernan.amiune.com)
 *  Licensed under MIT license:
 *  http://www.opensource.org/licenses/mit-license.php
 *
 *  Version: 1.1
 */

(function($) {
    $.fn.columnfilter = function(options) {

        var defaults = {};

        var options = $.extend(defaults, options);

        return this.each(function(index) {

            var $table = $(this);
            $table.find("th.filter").each(function() {
                //create a select list for each filter column
                var i = 0;
                var $select = $('<select class="selectfilter"></select>');
                var $this = $(this);
                var colindex = $this.parent().children().index($this) + 1;
                var dictionary = [];
                $table.find("tr td:nth-child(" + colindex + ")").each(function() {
                    var text = $(this).text();
                    dictionary[text] = true;
                });
                var colkeys = [];
                for (i in dictionary) colkeys.push(i);
                colkeys.sort();
                $select.append('<option value="All">All</option>');
                for (i=0; i<colkeys.length; i++) {
                    if(colkeys[i] === "indexOf")continue; //weird stuff happens in ie and chrome, firefox is awesome
                    $select.append('<option value="' + colkeys[i] + '">' + colkeys[i] + '</option>');
                }
                $(this).append("<br/>");
                $(this).append($select);

                //bind change function to each select filter
                $select.change(function() {

                    //create an array of the filters selected values
                    var colIndexes = [];
                    var selectedOptions = [];
                    $table.find(".selectfilter").each(function() {
                        $this = $(this);
                        var $parent = $(this).parent();
                        colIndexes.push($parent.parent().children().index($parent)+1);
                        selectedOptions.push($this.children(":selected").text());
                    });

                    //show or hide the corresponding rows
                    $table.find("tr").each(function(rowindex) {
                        if (rowindex > 0) {
                            var rowok = true;
                            for (i = 0; i < colIndexes.length;  i++) {
                                text = $(this).find("td:nth-child(" + colIndexes[i] + ")").text();
                                if (selectedOptions[i] != "All" && text != selectedOptions[i]) rowok = false;
                            }
                            if (rowok === true) $(this).show();
                            else $(this).hide();
                        }
                    });

                });
            });


        });

    }
})(jQuery);

$(document).ready(function() {
  $("table").columnfilter();
});