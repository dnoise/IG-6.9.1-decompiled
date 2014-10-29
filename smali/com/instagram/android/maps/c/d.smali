.class final Lcom/instagram/android/maps/c/d;
.super Landroid/os/Handler;
.source "PhotoMapsEditHelper.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/maps/c/c;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/c/c;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/instagram/android/maps/c/d;->a:Lcom/instagram/android/maps/c/c;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 42
    iget-object v0, p0, Lcom/instagram/android/maps/c/d;->a:Lcom/instagram/android/maps/c/c;

    invoke-static {v0}, Lcom/instagram/android/maps/c/c;->a(Lcom/instagram/android/maps/c/c;)V

    .line 43
    return-void
.end method
