.class public final synthetic Lcom/google/appinventor/components/runtime/PlayIntegrity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field public final synthetic f$0:Lcom/google/appinventor/components/runtime/PlayIntegrity;


# direct methods
.method public synthetic constructor <init>(Lcom/google/appinventor/components/runtime/PlayIntegrity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/PlayIntegrity$$ExternalSyntheticLambda0;->f$0:Lcom/google/appinventor/components/runtime/PlayIntegrity;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PlayIntegrity$$ExternalSyntheticLambda0;->f$0:Lcom/google/appinventor/components/runtime/PlayIntegrity;

    check-cast p1, Lcom/google/android/play/core/integrity/IntegrityTokenResponse;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/PlayIntegrity;->lambda$RequestClassicIntegrityVerdictWithNonce$10$com-google-appinventor-components-runtime-PlayIntegrity(Lcom/google/android/play/core/integrity/IntegrityTokenResponse;)V

    return-void
.end method
