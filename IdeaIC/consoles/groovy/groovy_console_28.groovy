import io.grpc.Status

List<Status> list = new LinkedList<>();
list.add(Status.OK);
list.add(Status.DATA_LOSS);
list.add(Status.DEADLINE_EXCEEDED);

list.toString();