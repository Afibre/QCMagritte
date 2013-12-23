lookup
userWithId: userid passwordHash: passwordHash

  ^ (self userWithId: userid) ifNotNil: [:user |
    (user verifyPasswordHash: passwordHash)
        ifTrue: [user]
        ifFalse: [nil]]
  