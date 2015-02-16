Rails.application.routes.draw do
  get 'encoding/good' => 'encoding#good'
  get 'encoding/bad' => 'encoding#bad'
  get 'encoding/really_bad' => 'encoding#really_bad'
end
