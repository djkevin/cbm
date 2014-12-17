package cbm

import audit.AuditLog
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_VIEWER', 'ROLE_EDITOR', 'ROLE_SUBMITTER'])
class AuditLogController {

    @Secured(['ROLE_VIEWER', 'ROLE_EDITOR', 'ROLE_SUBMITTER'])
    def loadAuditLog(Integer max){
        params.max = Math.min(max ?: 10, 100)

        def id = params.long('id')
        def className = params['className']

        def auditEntries = AuditLog.findAllByClassNameAndPersistedObjectId(className, id, [sort: 'lastUpdated', order: 'desc'])

        render(template: 'audit_details', model: [listAuditLog: auditEntries])
    }

}
