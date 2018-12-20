import org.apache.commons.io.FilenameUtils

String test = "aaa.com.txt"
String test2;
String ext = FilenameUtils.getExtension(test2);

if (ext==null) {
    System.out.print("aaaa")
} else {
    System.out.print("bbbb")
}