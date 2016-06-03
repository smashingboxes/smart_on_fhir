class ResourceQuery
  include HTTParty
  base_uri 'open-api.fhir.me'

  def initialize(resource)
    @resource = resource
  end

  def search(term)
    self.class.get("/#{@resource}?_format=json&name=#{term}")
  end

  def all
    self.class.get("/#{@resource}?_format=json")
  end

  def find(id)
    self.class.get("/#{@resource}/#{id}?_format=json")
  end

  def for_patient(id)
    self.class.get("/#{@resource}?_format=json&patient=#{id}")
  end
end
