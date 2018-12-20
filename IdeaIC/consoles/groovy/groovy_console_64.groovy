for (int i=0;i<300;i++)
{
    System.out.println("  <queue>");
    System.out.println(String.format("    <name>notification-retry-queue-%04d</name>",i));
    System.out.println("    <rate>500/s</rate>");
    System.out.println("    <bucket-size>500</bucket-size>");
    System.out.println("  </queue>")
}