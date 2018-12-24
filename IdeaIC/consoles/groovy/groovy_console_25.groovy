import io.grpc.Channel
import snapchat.servicelocator.config.Host

import java.util.concurrent.ConcurrentHashMap

 int NUM_HEALTH_CHECK_THREADS = 4;

List<List<Host>> hostLists = new ArrayList<>();

System.out.println("b+" + hostLists.size());
for (int i = 0; i < NUM_HEALTH_CHECK_THREADS; i++) {
    hostLists.add(new ArrayList<Host>());
}

System.out.println("a+" + hostLists.size());
