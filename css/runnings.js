exports.header =
{
    height: "1cm",
    contents: function(pageNum, numPages) {
        return "<h6 style='text-align: right'>Як позбавитися Windows за 1 день</h6><hr/>";
    }
}

exports.footer =
{
    height: "1cm",
    contents: function(pageNum, numPages) {
        return "<hr/><h6>GNU GFDL <a>https://www.gnu.org/licenses/fdl.html</a> <span style='float:right'>" + pageNum + "</span></h6>";
    }
}


/**
 * header and footer might be of format specified in http://phantomjs.org/api/webpage/property/paper-size.html
 *
 * Example:
 *  {
 *    height: "1cm",
 *    contents: function(pageNum, numPages) {
 *      return "<h1>Header <span style='float:right'>" + pageNum + " / " + numPages + "</span></h1>"
 *    }
 *  }
 */
