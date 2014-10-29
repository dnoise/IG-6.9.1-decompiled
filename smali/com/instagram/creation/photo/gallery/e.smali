.class public final Lcom/instagram/creation/photo/gallery/e;
.super Lcom/instagram/creation/photo/gallery/a;
.source "Image.java"

# interfaces
.implements Lcom/instagram/creation/photo/gallery/c;


# instance fields
.field private i:I


# direct methods
.method public constructor <init>(Lcom/instagram/creation/photo/gallery/b;Landroid/content/ContentResolver;JILandroid/net/Uri;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct/range {p0 .. p13}, Lcom/instagram/creation/photo/gallery/a;-><init>(Lcom/instagram/creation/photo/gallery/b;Landroid/content/ContentResolver;JILandroid/net/Uri;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;)V

    .line 50
    iput p14, p0, Lcom/instagram/creation/photo/gallery/e;->i:I

    .line 51
    return-void
.end method


# virtual methods
.method public final c()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/instagram/creation/photo/gallery/e;->i:I

    return v0
.end method
