using UnityEngine;
using UnityEngine.Rendering.HighDefinition;

// Include material common properties names
using static UnityEngine.Rendering.HighDefinition.HDMaterialProperties;

namespace UnityEditor.Rendering.HighDefinition
{
    /// <summary>The UI block that represents the surface options for decal materials.</summary>
    public class PGRUIBlock : MaterialUIBlock
    {
        internal class Styles
        {
            public static GUIContent header { get; } = EditorGUIUtility.TrTextContent("PGR Inputs");
            public static GUIContent nprAOMapText = new GUIContent("NPR AO Map", "rb is hightlight;b is shadow");
            public static GUIContent outlineStrength = new GUIContent("Outline Strength", "rb is hightlight;b is shadow");
            public static GUIContent matCap = new GUIContent("Mat Cap", "Mat Cap is for npr hightlight");
            public static GUIContent cubeMapBrightness = new GUIContent("Mat Cap Brightness", "Set the Brightness of Mat Cap");

        }

        MaterialProperty nprAOMap = new MaterialProperty();
        MaterialProperty outlineStrength = new MaterialProperty();
        MaterialProperty matCap = new MaterialProperty();
        MaterialProperty cubeMapBrightness = new MaterialProperty();

        /// <summary>
        /// Constructs a PGRUIBlock based on the parameters.
        /// </summary>
        /// <param name="expandableBit">Bit index used to store the foldout state.</param>
        public PGRUIBlock(ExpandableBit expandableBit)
                : base(expandableBit, Styles.header)
        {
        }

        /// <summary>
        /// Loads the material properties for the block.
        /// </summary>
        public override void LoadMaterialProperties()
        {
            outlineStrength = FindProperty(kOutlineStrength);
            nprAOMap = FindProperty(kNPRAOMap);
            matCap = FindProperty(kMatCap);
            cubeMapBrightness = FindProperty(kCubeMapBrightness);
        }

        /// <summary>
        /// Renders the properties in the block.
        /// </summary>
        protected override void OnGUIOpen()
        {

            if (nprAOMap != null)
                materialEditor.ShaderProperty(nprAOMap, Styles.nprAOMapText);
            if (outlineStrength != null)
                materialEditor.ShaderProperty(outlineStrength, Styles.outlineStrength);
            if (matCap != null)
                materialEditor.ShaderProperty(matCap, Styles.matCap);
            if (cubeMapBrightness != null)
                materialEditor.ShaderProperty(cubeMapBrightness, Styles.matCap);
        }
    }
}
