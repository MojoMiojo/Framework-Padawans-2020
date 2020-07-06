package Controller;

import Model.TODOs;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.lang.reflect.Type;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

public class TODOsController {

    //Converte os dados Json
    private List<TODOs> parseJson(String json ) {

        Type listType = new TypeToken<List<TODOs>>(){
        }.getType();

        return new Gson( ).fromJson( json , listType );
    }//end parseJson

    //Requisição e leitura do Json, retorna uma lista de TODOs.
    public List<TODOs> getTODOs( ){
        ArrayList<TODOs> todos = new ArrayList<>( );
        String json = "";

        try {
            System.out.println("Consultando...\n");

            URL url = new URL("https://jsonplaceholder.typicode.com/todos");
            HttpURLConnection urlConnection = ( HttpURLConnection )url.openConnection();
            BufferedReader br = new BufferedReader( new InputStreamReader( urlConnection.getInputStream( ) ) );

            for (String line = br.readLine(); line != null; line = br.readLine()) {
                json += line;
            }// end for

            todos.addAll(parseJson(json));

        } catch (MalformedURLException e) {
            e.printStackTrace();
        }catch(Exception e){
            System.out.println("Falha de requisição: " + e);
        }//end catch

        return todos;
    }//end getTODOs

}//end class
