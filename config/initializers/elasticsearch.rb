Searchkick.client = Elasticsearch::Client.new(hosts: ["localhost:9200", "localhost:9201"], retry_on_failure: true)
