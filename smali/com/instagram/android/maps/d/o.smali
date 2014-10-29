.class final Lcom/instagram/android/maps/d/o;
.super Ljava/lang/Object;
.source "ReviewPhotoMapFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/maps/d/l;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/d/l;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/instagram/android/maps/d/o;->a:Lcom/instagram/android/maps/d/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lcom/instagram/android/maps/d/o;->a:Lcom/instagram/android/maps/d/l;

    invoke-virtual {v0}, Lcom/instagram/android/maps/d/l;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->onBackPressed()V

    .line 104
    return-void
.end method
