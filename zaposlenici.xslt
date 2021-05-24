<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">

<html>
    <head>
        <meta charset="utf-8"/>
        <title>Zaposlenici</title>
        <style>
            body{
                background-color:grey;
            }
            #wrap{
                margin:0 auto;
                background-color:white;
                width:70%;             
                text-align:center;
            }
            header{
                background-color:#7be8d0;
                padding:2%;
            }
            section{
                padding:1%;
                border:1px solid #7be8d0;
            }
            .ime{
                font-size:20px;                
                font-weight:bold;
            }
            .mail{
                font-size:20px;  
            }
            img{
                width:200px;
            }
            .note{
                padding:2%;
            }
            a{
                color:#787878;
                text-decoration:none;
            }
            footer{
                background-color:#7be8d0;
                padding:2%;
            }
        </style>
    </head>
    <body>        

        <div id="wrap">

        <header>
            <h1>Zaposlenici</h1>
        </header>
        <xsl:for-each select="Zaposlenici/Zaposlenik">
        <section>
            <img>
                <xsl:attribute name="src">
                    <xsl:value-of select="Slika"/>
                </xsl:attribute>
            </img>
            <p class="ime"><xsl:value-of select="Ime"/>&#160;<xsl:value-of select="Prezime"/></p>
            <p><xsl:value-of select="Odjel"/></p>
            <p class="mail"><xsl:value-of select="Email"/></p>
        </section>
        </xsl:for-each>
        <div class="note">*sve slike su generirane na <a href="https://thispersondoesnotexist.com">ovoj stranici</a></div>
        <footer>
            <p>Katarina Kvaternjak | 1191234544</p>
        </footer>
        </div>
    </body>
</html>

</xsl:template>
</xsl:stylesheet>