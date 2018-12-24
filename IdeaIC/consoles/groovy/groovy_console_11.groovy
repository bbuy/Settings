import org.json.JSONObject

JSONObject jO = new JSONObject("{ \"name\": \"John Doe\" } /* some comment */")

jO.get("name")