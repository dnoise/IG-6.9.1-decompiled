.class final Lcom/instagram/android/maps/ui/z;
.super Ljava/lang/Object;
.source "MapMediaPopup.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/android/maps/ui/y;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/ui/y;)V
    .locals 0
    .parameter

    .prologue
    .line 319
    iput-object p1, p0, Lcom/instagram/android/maps/ui/z;->a:Lcom/instagram/android/maps/ui/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/instagram/android/maps/ui/z;->a:Lcom/instagram/android/maps/ui/y;

    iget-object v0, v0, Lcom/instagram/android/maps/ui/y;->a:Lcom/instagram/android/maps/ui/m;

    invoke-static {v0}, Lcom/instagram/android/maps/ui/m;->d(Lcom/instagram/android/maps/ui/m;)Lcom/instagram/android/maps/ui/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/maps/ui/ah;->c()V

    .line 323
    return-void
.end method
