.class final Lcom/instagram/android/maps/ui/x;
.super Ljava/lang/Object;
.source "MapMediaPopup.java"

# interfaces
.implements Lcom/instagram/android/maps/ui/f;


# instance fields
.field final synthetic a:Lcom/instagram/android/maps/ui/m;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/ui/m;)V
    .locals 0
    .parameter

    .prologue
    .line 310
    iput-object p1, p0, Lcom/instagram/android/maps/ui/x;->a:Lcom/instagram/android/maps/ui/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/instagram/android/maps/ui/x;->a:Lcom/instagram/android/maps/ui/m;

    invoke-static {v0}, Lcom/instagram/android/maps/ui/m;->d(Lcom/instagram/android/maps/ui/m;)Lcom/instagram/android/maps/ui/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/maps/ui/ah;->b()V

    .line 314
    return-void
.end method
