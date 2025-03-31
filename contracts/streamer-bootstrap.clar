
;; title: streamer-bootstrap


(impl-trait .proposal-trait.proposal-trait)

(define-public (execute (sender principal))
  (begin
    ;; Enable extensions to give your DAO form.
    (try! (contract-call? .executor-dao set-extensions
      (list
        {extension: .streamer-protocol, enabled: true}
        {extension: .stream-token, enabled: true}
      )
    ))

    ;; Add signers to your DAO.
    (try! (contract-call? .streamer-protocol add-signer 'ST1PQHQKV0RJXZFY1DGX8MNSNYVE3VGZJSRTPGZGM))
    (try! (contract-call? .streamer-protocol add-signer 'ST1SJ3DTE5DN7X54YDH5D64R3BCB6A2AG2ZQ8YPD5))
    (try! (contract-call? .streamer-protocol add-signer 'ST2CY5V39NHDPWSXMW9QDT3HC3GD6Q6XX4CFRK9AG))
    (ok true)
  )
)