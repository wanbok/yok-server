SimpleRoles.configure do
  valid_roles :student, :teacher
  strategy :one # :one or :many
end