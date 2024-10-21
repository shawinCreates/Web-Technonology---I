<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <!-- Match the root element -->
    <xsl:template match="/">
        <html>
            <body>
                <h1>Bookstore Inventory</h1>
                <table border="1">
                    <thead>
                        <tr>
                            <th>Category</th>
                            <th>Title</th>
                            <th>Language</th>
                            <th>Author</th>
                            <th>Year</th>
                            <th>Price</th>
                        </tr>
                    </thead>
                    <tbody>
                        <!-- Iterate through each book -->
                        <xsl:for-each select="bookstore/book">
                            <tr>
                                <td><xsl:value-of select="@category"/></td>
                                <td><xsl:value-of select="title"/></td>
                                <td><xsl:value-of select="title/@lang"/></td>
                                <td><xsl:value-of select="author"/></td>
                                <td><xsl:value-of select="year"/></td>
                                <td><xsl:value-of select="price"/></td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>