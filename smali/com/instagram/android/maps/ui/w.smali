.class final Lcom/instagram/android/maps/ui/w;
.super Ljava/lang/Object;
.source "MapMediaPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/g/b;

.field final synthetic b:Lcom/instagram/android/maps/ui/m;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/ui/m;Lcom/instagram/android/g/b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 235
    iput-object p1, p0, Lcom/instagram/android/maps/ui/w;->b:Lcom/instagram/android/maps/ui/m;

    iput-object p2, p0, Lcom/instagram/android/maps/ui/w;->a:Lcom/instagram/android/g/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 238
    iget-object v0, p0, Lcom/instagram/android/maps/ui/w;->b:Lcom/instagram/android/maps/ui/m;

    invoke-static {v0}, Lcom/instagram/android/maps/ui/m;->c(Lcom/instagram/android/maps/ui/m;)Lcom/instagram/android/maps/ui/af;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/maps/ui/w;->a:Lcom/instagram/android/g/b;

    invoke-interface {v0, v1}, Lcom/instagram/android/maps/ui/af;->a(Lcom/instagram/android/g/b;)V

    .line 239
    return-void
.end method
