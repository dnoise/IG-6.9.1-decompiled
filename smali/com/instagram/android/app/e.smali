.class final Lcom/instagram/android/app/e;
.super Ljava/lang/Object;
.source "InstagramApplicationForMainProcess.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/android/app/InstagramApplicationForMainProcess;


# direct methods
.method constructor <init>(Lcom/instagram/android/app/InstagramApplicationForMainProcess;)V
    .locals 0
    .parameter

    .prologue
    .line 303
    iput-object p1, p0, Lcom/instagram/android/app/e;->a:Lcom/instagram/android/app/InstagramApplicationForMainProcess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 309
    invoke-static {}, Lcom/instagram/strings/StringBridge;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/instagram/android/app/e;->a:Lcom/instagram/android/app/InstagramApplicationForMainProcess;

    #calls: Lcom/instagram/android/app/InstagramApplicationForMainProcess;->reauthFacebookAndFetchUserId()V
    invoke-static {v0}, Lcom/instagram/android/app/InstagramApplicationForMainProcess;->access$400(Lcom/instagram/android/app/InstagramApplicationForMainProcess;)V

    .line 312
    :cond_0
    return-void
.end method
