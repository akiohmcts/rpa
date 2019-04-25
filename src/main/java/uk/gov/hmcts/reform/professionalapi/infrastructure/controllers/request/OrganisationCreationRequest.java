package uk.gov.hmcts.reform.professionalapi.infrastructure.controllers.request;

import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.List;
import javax.validation.constraints.NotNull;
import lombok.Builder;
import lombok.Getter;

@Getter
@Builder(builderMethodName = "anOrganisationCreationRequest")
public class OrganisationCreationRequest {

	@NotNull
	private final String name;

	@NotNull
	private final UserCreationRequest superUser;

	private List<PbaAccountCreationRequest> pbaAccounts;

	private final List<ContactInformationCreationRequest> contactInformation;

	@JsonCreator
	public OrganisationCreationRequest(
			@JsonProperty("name") String name,
			@JsonProperty("superUser") UserCreationRequest superUser,
			@JsonProperty("pbaAccounts") List<PbaAccountCreationRequest> pbaAccountCreationRequests,
			@JsonProperty("contactInformation") List<ContactInformationCreationRequest> contactInformationRequest) {

		this.name = name;
		this.superUser = superUser;
		this.pbaAccounts = pbaAccountCreationRequests;
		this.contactInformation = contactInformationRequest;
	}

}
