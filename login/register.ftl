<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=!messagesPerField.existsError('firstName','lastName','email','username','password','password-confirm'); section>
    <#if section = "header">
        ${msg("registerTitle")}
    <#elseif section = "form">

        <form id="kc-register-form" class="${properties.kcFormClass!}" action="${url.registrationAction}" method="post">

    <div id='wrapper_form'>
        <div class='step1'>

            <div class="${properties.kcFormGroupClass!}">
                <div class="${properties.kcLabelWrapperClass!}">
                    <label for="firstName" class="${properties.kcLabelClass!}">${msg("firstName")}</label>
                    <span style="color: red;">*</span>
                </div>
                <div class="${properties.kcInputWrapperClass!}">
                    <input required type="text" id="firstName" class="${properties.kcInputClass!}" name="firstName"
                           value="${(register.formData.firstName!'')}"
                           aria-invalid="<#if messagesPerField.existsError('firstName')>true</#if>"
                    />

                    <#if messagesPerField.existsError('firstName')>
                        <span id="input-error-firstname" class="${properties.kcInputErrorMessageClass!}" aria-live="polite">
                            ${kcSanitize(messagesPerField.get('firstName'))?no_esc}
                        </span>
                    </#if>
                </div>
            </div>

            <div class="${properties.kcFormGroupClass!}">
                <div class="${properties.kcLabelWrapperClass!}">
                    <label for="lastName" class="${properties.kcLabelClass!}">${msg("lastName")}</label>
                <span style="color: red;">*</span>
                </div>
                <div class="${properties.kcInputWrapperClass!}">
                    <input required type="text" id="lastName" class="${properties.kcInputClass!}" name="lastName"
                           value="${(register.formData.lastName!'')}"
                           aria-invalid="<#if messagesPerField.existsError('lastName')>true</#if>"
                    />

                    <#if messagesPerField.existsError('lastName')>
                        <span id="input-error-lastname" class="${properties.kcInputErrorMessageClass!}" aria-live="polite">
                            ${kcSanitize(messagesPerField.get('lastName'))?no_esc}
                        </span>
                    </#if>
                </div>
            </div>



            <div class="${properties.kcFormGroupClass!}">
                <div class="${properties.kcLabelWrapperClass!}">
                    <label for="email" class="${properties.kcLabelClass!}">${msg("email")}</label>
                <span style="color: red;">*</span>
                </div>
                <div class="${properties.kcInputWrapperClass!}">
                    <input required type="text" id="email" class="${properties.kcInputClass!}" name="email"
                           value="${(register.formData.email!'')}" autocomplete="email"
                           aria-invalid="<#if messagesPerField.existsError('email')>true</#if>"
                    />

                    <#if messagesPerField.existsError('email')>
                        <span id="input-error-email" class="${properties.kcInputErrorMessageClass!}" aria-live="polite">
                            ${kcSanitize(messagesPerField.get('email'))?no_esc}
                        </span>
                    </#if>
                </div>
            </div>

            <#if !realm.registrationEmailAsUsername>
                <div class="${properties.kcFormGroupClass!}">
                    <div class="${properties.kcLabelWrapperClass!}">
                        <label for="username" class="${properties.kcLabelClass!}">${msg("username")}</label>
                <span style="color: red;">*</span>
                    </div>
                    <div class="${properties.kcInputWrapperClass!}">
                        <input required type="text" id="username" class="${properties.kcInputClass!}" name="username"
                               value="${(register.formData.username!'')}" autocomplete="username"
                               aria-invalid="<#if messagesPerField.existsError('username')>true</#if>"
                        />

                        <#if messagesPerField.existsError('username')>
                            <span id="input-error-username" class="${properties.kcInputErrorMessageClass!}" aria-live="polite">
                                ${kcSanitize(messagesPerField.get('username'))?no_esc}
                            </span>
                        </#if>
                    </div>
                </div>
            </#if>

            <#if passwordRequired??>
                <div class="${properties.kcFormGroupClass!}">
                    <div class="${properties.kcLabelWrapperClass!}">
                        <label for="password" class="${properties.kcLabelClass!}">${msg("password")}</label>
                <span style="color: red;">*</span>
                    </div>
                    <div class="${properties.kcInputWrapperClass!}">
                        <input required type="password" id="password" class="${properties.kcInputClass!}" name="password"
                               autocomplete="new-password"
                               aria-invalid="<#if messagesPerField.existsError('password','password-confirm')>true</#if>"
                        />

                        <#if messagesPerField.existsError('password')>
                            <span id="input-error-password" class="${properties.kcInputErrorMessageClass!}" aria-live="polite">
                                ${kcSanitize(messagesPerField.get('password'))?no_esc}
                            </span>
                        </#if>
                    </div>
                </div>

                <div class="${properties.kcFormGroupClass!}">
                    <div class="${properties.kcLabelWrapperClass!}">
                        <label for="password-confirm"
                               class="${properties.kcLabelClass!}">${msg("passwordConfirm")}</label>
                <span style="color: red;">*</span>
                    </div>
                    <div class="${properties.kcInputWrapperClass!}">
                        <input type="password" id="password-confirm" class="${properties.kcInputClass!}"
                               name="password-confirm"
                               aria-invalid="<#if messagesPerField.existsError('password-confirm')>true</#if>"
                        />

                        <#if messagesPerField.existsError('password-confirm')>
                            <span id="input-error-password-confirm" class="${properties.kcInputErrorMessageClass!}" aria-live="polite">
                                ${kcSanitize(messagesPerField.get('password-confirm'))?no_esc}
                            </span>
                        </#if>
                    </div>
                </div>
            </#if>

        </div>
        <div class="step2">

           <div class="${properties.kcFormGroupClass!}">
               <div class="${properties.kcLabelWrapperClass!}">
                   <label for="user.attributes.mobile" class="${properties.kcLabelClass!}">${msg("telephone")}</label>
                <span style="color: red;">*</span>
               </div>

               <div class="${properties.kcInputWrapperClass!}">
                   <input required type="text" class="${properties.kcInputClass!}" id="user.attributes.mobile" name="user.attributes.mobile" value="${(register.formData['user.attributes.mobile']!'')}"/>
               </div>
            </div>

                <div class="${properties.kcFormGroupClass!}">
                   <div class="${properties.kcLabelWrapperClass!}">
                       <label for="user.attributes.typePiece" class="${properties.kcLabelClass!}">Type de pièce </label>
                <span style="color: red;">*</span>
                   </div>

                   <div class="${properties.kcInputWrapperClass!}">
                        <select requered id="user.attributes.typePiece"
                            class="${properties.kcInputClass!}"
                            name="user.attributes.typePiece"
                            value="${(register.formData['user.attributes.typePiece']!'')}">
                                <option value="" selected> Sélectionner un type de pièce </option>
                                <option value="CNI" >Carte d'identité </option>
                                <option value="PP">Passport</option>
                        </select>
                   </div>
                </div>

            <div class="${properties.kcFormGroupClass!}">
               <div class="${properties.kcLabelWrapperClass!}">
                   <label for="user.attributes.numeroPiece" class="${properties.kcLabelClass!}">Numéro de pièce </label>
                <span style="color: red;">*</span>
               </div>

               <div class="${properties.kcInputWrapperClass!}">
                   <input required type="text" class="${properties.kcInputClass!}"
                    id="user.attributes.numeroPiece" name="user.attributes.numeroPiece" value="${(register.formData['user.attributes.numeroPiece']!'')}"/>
               </div>
            </div>

            <div class="${properties.kcFormGroupClass!}">
               <div class="${properties.kcLabelWrapperClass!}">
                   <label for="user.attributes.dateDelivrance" class="${properties.kcLabelClass!}">Date de délivrance </label>
                <span style="color: red;">*</span>
               </div>

               <div class="${properties.kcInputWrapperClass!}">
                   <input required type="date" class="${properties.kcInputClass!}"
                    id="user.attributes.dateDelivrance" name="user.attributes.dateDelivrance" value="${(register.formData['user.attributes.dateDelivrance']!'')}"/>
               </div>
            </div>

            <div class="${properties.kcFormGroupClass!}">
               <div class="${properties.kcLabelWrapperClass!}">
                   <label for="user.attributes.nationalite" class="${properties.kcLabelClass!}">Nationalité </label>
                <span style="color: red;">*</span>
               </div>

               <div class="${properties.kcInputWrapperClass!}">
                   <input required type="text" class="${properties.kcInputClass!}"
                    id="user.attributes.nationalite" name="user.attributes.nationalite" value="${(register.formData['user.attributes.nationalite']!'')}"/>
               </div>
            </div>

            <div class="${properties.kcFormGroupClass!}">
               <div class="${properties.kcLabelWrapperClass!}">
                   <label for="user.attributes.adresse" class="${properties.kcLabelClass!}"> Adresse</label>
                <span style="color: red;">*</span>
               </div>

               <div class="${properties.kcInputWrapperClass!}">
                   <input required type="text" class="${properties.kcInputClass!}"
                    id="user.attributes.adresse" name="user.attributes.adresse" value="${(register.formData['user.attributes.adresse']!'')}"/>
               </div>
            </div>
        </div>
    </div>

    <div class='step3'>

    <#if recaptchaRequired??>
                <div class="form-group">
                    <div class="${properties.kcInputWrapperClass!}">
                        <div class="g-recaptcha" data-size="compact" data-sitekey="${recaptchaSiteKey}"></div>
                    </div>
                </div>
            </#if>

            <div class="${properties.kcFormGroupClass!}">
                <div id="kc-form-options" class="${properties.kcFormOptionsClass!}">
                    <div class="${properties.kcFormOptionsWrapperClass!}">
                        <span><a href="${url.loginUrl}">${kcSanitize(msg("backToLogin"))?no_esc}</a></span>
                    </div>
                </div>

                <div id="kc-form-buttons" class="${properties.kcFormButtonsClass!}">
                    <input required class="${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonBlockClass!} ${properties.kcButtonLargeClass!}" type="submit" value="${msg("doRegister")}"/>
                </div>
            </div>


    </div>
  </form>
    </#if>
</@layout.registrationLayout>
