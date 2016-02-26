module Dict
  def self.new(num_buckets=256)
    # Initializes a Dict with the given number of buckets.
    aDict = []
    (0..num_buckets).each do |i|
      aDict.push([])
    end

    return aDict
  end

  def self.hash_key(aDict, key)
    # Given a key this will create a number and then convert it to an index for the aDict's buckets
    puts "HASH #{key}=#{key.hash}"
    return key.hash % aDict.length
  end

  def self.get_bucket(aDict, key)
    bucket_id = Dict.hash_key(aDict, key)
    return aDict[bucket_id]
  end

  def self.get_slot(aDict, key, default=nil)
    # Returns the index, key, and value of a slot found in a bucket.
    bucket = Dict.get_bucket(aDict, key)

    bucket.each_with_index do |kv, i|
      k, v = kv
      return i, k, v if key == k
    end

    return -1, key, default
  end

  def self.get(aDict, key, default=nil)
    # Gets the value in a bucket for the given key, or the default.
    i, k, v = Dict.get_slot(aDict, key, default=default)
    return v
  end

  def self.set(aDict, key, value)
    # Set the key to the value, replacing any existing value.
    bucket = Dict.get_bucket(aDict, key)
    i, k, v = Dict.get_slot(aDict, key)

    if i >= 0
      bucket[i] = [key, value]
    else
      bucket.push([key, value])
    end
  end

  def self.delete(aDict, key)
    # Deletes the given key from the Dict.
    bucket = Dict.get_bucket(aDict, key)

    (0..bucket.length).each do |i|
      k, v = bucket[i]
      if key == k
        bucket.delete_at(i)
        break
      end
    end
  end

  def self.list(aDict)
    # Prints out what's in the Dict.
    aDict.each do |bucket|
      bucket.each { |k, v| puts k, v }
    end
  end
end
