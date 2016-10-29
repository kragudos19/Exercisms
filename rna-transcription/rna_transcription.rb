class Complement
  def self.of_dna(dna)
    rna = ""
    dna.chars do |ltr| 
      case ltr
      when 'G'
        rna << 'C'
      when 'C'
        rna << 'G'
      when 'A'
        rna << 'U'
      when 'T'
        rna << 'A'
      else 
        return ""
      end
    end
      rna
  end
end

module BookKeeping 
  VERSION = 4
end