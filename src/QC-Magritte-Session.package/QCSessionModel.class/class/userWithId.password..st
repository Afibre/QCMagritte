lookup
userWithId: userid password: password

  ^ (self userWithId: userid) ifNotNil: [:user |
    (user verifyPassword: password)
        ifTrue: [user]
        ifFalse: [nil]]
  