package DataRepo;

public class KarateRepo {
    private static KarateRepo single_instance = null;

    private KarateRepo() {

    }

    public static KarateRepo getInstance() {
        // To ensure only one instance is created
        if (single_instance == null) {
            single_instance = new KarateRepo();
        }
        return single_instance;
    }
}
