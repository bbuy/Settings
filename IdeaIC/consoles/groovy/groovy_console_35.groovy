import com.google.cloud.storage.Acl
import com.snapchat.admanager.api.entities.RoleType

Set<RoleType> testRole = new HashSet<>();
testRole.add(RoleType.account_manager);
RoleType.EMPLOYEE_ROLES.retainAll(testRole);