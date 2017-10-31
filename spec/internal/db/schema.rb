ActiveRecord::Schema.define do
  create_table :accounts do |t|
  end

  create_table :office_parks do |t|
  end

  create_table :properties do |t|
    t.references :office_parks
    t.references :accounts
  end

  create_table :floors do |t|
    t.references :properties
  end

  create_table :spaces do |t|
    t.references :floors
  end

  create_table :tenants do |t|
  end

  create_table :leases do |t|
    t.references :tenants
  end

  create_table :lease_terms do |t|
    t.references :leases
  end

  create_table :space_lease_terms do |t|
    t.references :spaces
    t.references :lease_terms
  end

  create_table :rights do |t|
    t.references :spaces
  end
end
