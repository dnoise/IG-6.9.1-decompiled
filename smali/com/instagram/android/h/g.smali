.class final Lcom/instagram/android/h/g;
.super Ljava/lang/Object;
.source "RealtimeUpdateController.java"

# interfaces
.implements Lcom/instagram/realtimeclient/RealtimeOperationManager$Listener;


# instance fields
.field final synthetic a:Lcom/instagram/android/h/f;


# direct methods
.method constructor <init>(Lcom/instagram/android/h/f;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/instagram/android/h/g;->a:Lcom/instagram/android/h/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onOperation(Lcom/instagram/realtimeclient/RealtimeOperation;)V
    .locals 1
    .parameter "operation"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/instagram/android/h/g;->a:Lcom/instagram/android/h/f;

    invoke-static {v0}, Lcom/instagram/android/h/f;->c(Lcom/instagram/android/h/f;)Lcom/instagram/android/h/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instagram/android/h/d;->a(Lcom/instagram/realtimeclient/RealtimeOperation;)V

    .line 56
    return-void
.end method
