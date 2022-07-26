

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css.css"/>
    </head>
    <body>
        <div class="form">
        <h1>Veuiller entrer vos informations</h1>
        <div class="input">
        <form action="Monservlet" method="POST">
            
                        <input type="text" name="nom" placeholder="NOM" required>                   
                        <input type="text" name="prenom" placeholder="PRENOM" required>                
                        <input type="text" name="pseudo" Placeholder="PSEUDO" required>
                        <input type="mailto" name="email" Placeholder="EMAIL" required>                                
                        <input type="password" name="password1" Placeholder="MOT DE PASSE" required>            
                        <input type="password" name="password2" Placeholder="CONFIRMER MOT DE PASSE" required><br>
                        <input class="envoyer" type="submit" name="" value="ENVOYER">
                    
            
        </form>
        </div>
        </div>
    </body>
</html>
