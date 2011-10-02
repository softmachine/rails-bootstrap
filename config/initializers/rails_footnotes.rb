if defined?(Footnotes) && Rails.env.development?
  if true
    Footnotes.run! # first of all
  end
  # ... other init code
end
